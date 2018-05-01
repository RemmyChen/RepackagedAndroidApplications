package com.xiaomi.ad.demo;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;

import com.miui.zeus.mimo.sdk.ad.AdWorkerFactory;
import com.miui.zeus.mimo.sdk.ad.IAdWorker;
import com.miui.zeus.mimo.sdk.listener.MimoAdListener;
import com.xiaomi.ad.common.pojo.AdType;
import com.xiaomi.ad.mimo.demo.R;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NewsFeedListActivity extends Activity {
    public static final String TAG = "List-StandardNewsFeed";

    private static final String[] POSITION_ID = {"2cae1a1f63f60185630f78a1d63923b0", "b38f454156852941f3883c736c79e7e1"};

    private int[] mAdPositionList = {3, 5};
    private int maxItemsSize = 15;
    private LayoutInflater mInflater;
    private Map<Integer, String> mUpIds = new HashMap<Integer, String>();
    private Map<Integer, View> mViews = new HashMap<Integer, View>();
    private List<IAdWorker> mWorkers = new ArrayList<IAdWorker>();
    private ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.standard_news_feed_list_layout);
        mListView = (ListView) findViewById(R.id.adList);

        for (int i = 0; i < mAdPositionList.length; i++) {
            mUpIds.put(mAdPositionList[i], POSITION_ID[i]);
        }

        mInflater = LayoutInflater.from(this);

        findViewById(R.id.fetchAd).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                recycle();
                mListView.setAdapter(new MyListAdapter());
                mListView.setVisibility(View.VISIBLE);
            }
        });
    }

    @Override
    public void finish() {
        super.finish();
        try {
            Log.e(TAG, "finish");
            recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mViews.clear();
        mWorkers.clear();
    }

    private void recycle() {
        try {
            for (IAdWorker worker : mWorkers) {
                worker.recycle();
            }
        } catch (Exception e) {
        }
    }

    class MyListAdapter extends BaseAdapter {
        final static int TYPE_AD = 0;
        final static int TYPE_NORMAL_ITEM = 1;


        @Override
        public int getCount() {
            return maxItemsSize;
        }

        @Override
        public Object getItem(int position) {
            return null;
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        private boolean isAdPosition(int index) {
            for (int i = 0; i < mAdPositionList.length; i++) {
                if (mAdPositionList[i] == index) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int getItemViewType(int position) {
            if (isAdPosition(position)) {
                return TYPE_AD;
            }
            return TYPE_NORMAL_ITEM;
        }

        @Override
        public int getViewTypeCount() {
            return 2;
        }

        public View getView(final int position, View convertView, ViewGroup parent) {
            try {
                if (isAdPosition(position)) {
                    convertView = mViews.get(position);
                    if (convertView == null) {
                        FrameLayout container = new FrameLayout(getApplicationContext());
                        final IAdWorker worker = AdWorkerFactory.getAdWorker(getApplicationContext(), container, new MimoAdListener() {
                            @Override
                            public void onAdPresent() {
                                Log.e(TAG, "onAdPresent " + String.valueOf(position));
                            }

                            @Override
                            public void onAdClick() {
                                Log.e(TAG, "onAdClick " + String.valueOf(position));
                            }

                            @Override
                            public void onAdDismissed() {
                                Log.e(TAG, "onAdDismissed " + String.valueOf(position));
                            }

                            @Override
                            public void onAdFailed(String s) {
                                Log.e(TAG, "onAdFailed " + String.valueOf(position));
                            }

                            @Override
                            public void onAdLoaded() {
                                Log.e(TAG, "onAdLoaded " + String.valueOf(position));
                            }
                        }, AdType.AD_STANDARD_NEWSFEED);
                        worker.loadAndShow(mUpIds.get(position));
                        mWorkers.add(worker);
                        convertView = container;
                        mViews.put(position, container);
                    }
                } else {
                    if (convertView == null) {
                        convertView = mInflater.inflate(R.layout.list_item_layout, null);
                    }
                }
                return convertView;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }
}
