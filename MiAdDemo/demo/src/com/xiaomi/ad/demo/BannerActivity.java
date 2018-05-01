package com.xiaomi.ad.demo;

import android.app.Activity;
import android.content.Intent;
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

public class BannerActivity extends Activity {
    public static final String TAG = "AD-BannerActivity";

    private static final String BANNER_POS_ID = "802e356f1726f9ff39c69308bfd6f06a";
    IAdWorker mBannerAd;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.webview_layout);
        final ViewGroup container = (ViewGroup) findViewById(R.id.container);

        final Button fetchBtn = (Button) findViewById(R.id.fetchAd);
        try{
            mBannerAd = AdWorkerFactory.getAdWorker(this, container, new MimoAdListener() {
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
                }

                @Override
                public void onAdFailed(String s) {
                }

                @Override
                public void onAdLoaded() {
                }
            }, AdType.AD_BANNER);

            fetchBtn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        mBannerAd.loadAndShow(BANNER_POS_ID);
                    } catch (Exception e) {
                    }
                }
            });
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        try{
            super.onDestroy();
            mBannerAd.recycle();
        }catch (Exception e) {
        }
    }
}
