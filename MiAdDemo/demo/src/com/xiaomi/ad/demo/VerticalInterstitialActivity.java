package com.xiaomi.ad.demo;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.miui.zeus.mimo.sdk.ad.AdWorkerFactory;
import com.miui.zeus.mimo.sdk.ad.IAdWorker;
import com.miui.zeus.mimo.sdk.listener.MimoAdListener;
import com.xiaomi.ad.common.pojo.AdType;
import com.xiaomi.ad.mimo.demo.R;

public class VerticalInterstitialActivity extends Activity implements View.OnClickListener {
    public static final String TAG = "VerticalInterstitial";
    //以下的POSITION_ID 需要使用您申请的值替换下面内容
    private static final String POSITION_ID = "67b05e7cc9533510d4b8d9d4d78d0ae9";

    private Button mPreCacheBtn;
    private Button mShowBtn;
    private IAdWorker mAdWorker;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.interstitialad);

        mPreCacheBtn = (Button) this.findViewById(R.id.cache_btn);
        mShowBtn = (Button) this.findViewById(R.id.show_btn);

        mPreCacheBtn.setOnClickListener(this);
        mShowBtn.setOnClickListener(this);

        //在这里,mPlayBtn是作为一个锚点传入的，可以换成任意其他的view，比如getWindow().getDecorView()
        try {
            mAdWorker = AdWorkerFactory.getAdWorker(this, (ViewGroup) getWindow().getDecorView(), new MimoAdListener() {
                @Override
                public void onAdPresent() {
                    Log.e(TAG, "onAdPresent");
                }

                @Override
                public void onAdClick() {
                    Log.e(TAG, "onAdClick");
                }

                @Override
                public void onAdDismissed() {
                    Log.e(TAG, "onAdDismissed");
                }

                @Override
                public void onAdFailed(String s) {
                    Log.e(TAG, "onAdFailed");
                    mShowBtn.setEnabled(false);
                }

                @Override
                public void onAdLoaded() {
                    Log.e(TAG, "ad loaded");
                    mShowBtn.setEnabled(true);
                }
            }, AdType.AD_INTERSTITIAL);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onClick(View v) {
        try {
            switch (v.getId()) {
                case R.id.cache_btn:
                    if (!mAdWorker.isReady()) {
                        mAdWorker.load(POSITION_ID);
                    }
                    break;
                case R.id.show_btn:
                    if (!mAdWorker.isReady()) {
                        mShowBtn.setEnabled(false);
                    } else {
                        mAdWorker.show();
                        mShowBtn.setEnabled(false);
                    }
                    break;
            }
        } catch (Exception e) {
        }
    }

    @Override
    protected void onDestroy() {
        try {
            super.onDestroy();
            mAdWorker.recycle();
        } catch (Exception e) {
        }
    }
}
