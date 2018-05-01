package com.xiaomi.ad.demo;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.miui.zeus.mimo.sdk.ad.AdWorkerFactory;
import com.miui.zeus.mimo.sdk.ad.IVideoAdWorker;
import com.miui.zeus.mimo.sdk.listener.MimoVideoListener;
import com.xiaomi.ad.common.pojo.AdType;
import com.xiaomi.ad.mimo.demo.R;

public class PlasterVideoActivity extends Activity implements View.OnClickListener {
    private static final String TAG = "PlasterVideoActivity";

    private static final String PLASTER_POS_ID = "20c070adf42787a99f8146881a640306";

    IVideoAdWorker mVideoAdWorker;
    private Button mPreCacheBtn;
    private Button mShowBtn;
    private ViewGroup mContainer;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.plaster_video_layout);

        mPreCacheBtn = (Button) this.findViewById(R.id.load);
        mShowBtn = (Button) this.findViewById(R.id.show);
        mContainer = (ViewGroup) this.findViewById(R.id.container);


        mPreCacheBtn.setOnClickListener(this);
        mShowBtn.setOnClickListener(this);

        try {
            mVideoAdWorker = AdWorkerFactory.getVideoAdWorker(this, PLASTER_POS_ID, AdType.AD_PLASTER_VIDEO);
            mVideoAdWorker.setListener(new MimoVideoListener() {
                @Override
                public void onVideoStart() {
                    Log.e(TAG, "Video is start");
                }

                @Override
                public void onVideoPause() {
                    Log.e(TAG, "Video is pause");

                }

                @Override
                public void onVideoComplete() {
                    Log.e(TAG, "Video is complete");
                }

                @Override
                public void onAdPresent() {
                    Log.e(TAG, "ad present in");
                }

                @Override
                public void onAdClick() {
                    Log.e(TAG, "ad is clicked");
                }

                @Override
                public void onAdDismissed() {
                    Log.e(TAG, "ad is dismissed");
                }

                @Override
                public void onAdFailed(String s) {
                    Log.e(TAG, "ad load failed");
                    mShowBtn.setEnabled(false);
                }

                @Override
                public void onAdLoaded() {
                    Log.e(TAG, "ad is loaded");
                    mShowBtn.setEnabled(true);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onClick(View v) {
        try {
            switch (v.getId()) {
                case R.id.load:
                    mVideoAdWorker.recycle();
                    if (!mVideoAdWorker.isReady()) {
                        mVideoAdWorker.load();
                    }
                    break;
                case R.id.show:
                    if (mVideoAdWorker.isReady()) {
                        mContainer.removeAllViews();
                    }
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                // show 耗时，不要放在主线程
                                mVideoAdWorker.show(mContainer);
                                mVideoAdWorker.play();
                            } catch (Exception e) {
                            }
                        }
                    }).start();
                    mShowBtn.setEnabled(false);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        try {
            Log.e(TAG, "destroy");
            mVideoAdWorker.recycle();
        } catch (Exception e) {
        }
    }
}
