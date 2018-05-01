package com.xiaomi.ad.demo;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListView;

import com.miui.zeus.mimo.sdk.ad.AdWorkerFactory;
import com.miui.zeus.mimo.sdk.ad.IVideoAdWorker;
import com.miui.zeus.mimo.sdk.listener.MimoVideoListener;
import com.xiaomi.ad.common.pojo.AdType;
import com.xiaomi.ad.mimo.demo.R;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NewsFeedVideoListActivity extends Activity {
    public static final String TAG = "StandardNewsFeedVideo";

    private static final String[] POSITION_ID = {"0bd963002ece0fca0bfff800fb6beca5"};
    private static final int[] mAdPositionList = {3};

    private int maxItemsSize = 15;
    private Map<Integer, String> mUpIds = new HashMap<Integer, String>();
    private Map<Integer, VideoContainer> mViews = new HashMap<Integer, VideoContainer>();
    private List<IVideoAdWorker> mWorkers = new ArrayList<IVideoAdWorker>();
    private ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.stand_news_feed_video_list_layout);
        mListView = findViewById(R.id.adList);

        for (int i = 0; i < mAdPositionList.length; i++) {
            mUpIds.put(mAdPositionList[i], POSITION_ID[i]);
        }

        findViewById(R.id.loadAd).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    recycle();

                    for (int i = 0; i < mAdPositionList.length; i++) {
                        final VideoContainer container = new VideoContainer(NewsFeedVideoListActivity.this);
                        final IVideoAdWorker worker = AdWorkerFactory.getVideoAdWorker(getApplicationContext(),
                                POSITION_ID[0], AdType.AD_PLASTER_VIDEO);
                        worker.setListener(new MimoVideoListener() {
                            @Override
                            public void onVideoStart() {

                            }

                            @Override
                            public void onVideoPause() {

                            }

                            @Override
                            public void onVideoComplete() {

                            }

                            @Override
                            public void onAdPresent() {

                            }

                            @Override
                            public void onAdClick() {

                            }

                            @Override
                            public void onAdDismissed() {

                            }

                            @Override
                            public void onAdFailed(String s) {

                            }

                            @Override
                            public void onAdLoaded() {
                                findViewById(R.id.fetchAd).setEnabled(true);
                                try {
                                    container.setWorker(worker);
                                    worker.show(container);
                                    mWorkers.add(worker);
                                } catch (Exception e) {
                                }
                            }
                        });
                        worker.load();
                        mViews.put(mAdPositionList[i], container);
                    }
                } catch (Exception e) {

                }
            }
        });

        findViewById(R.id.fetchAd).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                findViewById(R.id.fetchAd).setEnabled(false);
                mListView.setVisibility(View.VISIBLE);
                mListView.setAdapter(new NewsFeedVideoListActivity.MyListAdapter());
                mListView.setOnScrollListener(new AbsListView.OnScrollListener() {
                    @Override
                    public void onScrollStateChanged(AbsListView view, int scrollState) {

                    }

                    @Override
                    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
                        try {
                            int lastVisible = firstVisibleItem + visibleItemCount - 1;
                            for (int i = 0; i < mAdPositionList.length; i++) {
                                int index = mAdPositionList[i];
                                IVideoAdWorker worker = mViews.get(index).mWorker;
                                if (index < firstVisibleItem
                                        || index > lastVisible) {
                                    if (worker.getStatus() == IVideoAdWorker.FLOW_VIDEO_START) {
                                        Log.e(TAG, "real pause");
                                        worker.pause();
                                    }
                                } else {
                                    if (worker.getStatus() == IVideoAdWorker.FLOW_VIDEO_PAUSE) {
                                        worker.play();
                                    }
                                }
                            }
                        } catch (Exception e) {
                        }
                    }
                });
            }
        });
    }

    @Override
    public void finish() {
        super.finish();
        recycle();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mViews.clear();
        mWorkers.clear();
    }

    private void recycle() {
        try {
            for (IVideoAdWorker worker : mWorkers) {
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
                } else {
                    if (convertView == null) {
                        LayoutInflater mInflater = LayoutInflater.from(getApplicationContext());
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
