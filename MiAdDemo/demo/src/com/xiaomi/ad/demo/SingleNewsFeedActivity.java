package com.xiaomi.ad.demo;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;

import com.miui.zeus.mimo.sdk.ad.AdWorkerFactory;
import com.miui.zeus.mimo.sdk.ad.IAdWorker;
import com.miui.zeus.mimo.sdk.listener.MimoAdListener;
import com.xiaomi.ad.common.pojo.AdType;
import com.xiaomi.ad.mimo.demo.R;

public class SingleNewsFeedActivity extends Activity {
    public static final String TAG = "AD-StandardNewsFeed";

    private static final String[] POSITION_ID = {"2cae1a1f63f60185630f78a1d63923b0",
            "0c220d9bf7029e71461f247485696d07", "b38f454156852941f3883c736c79e7e1"};

    private final static String[] POSITION_NAMES = {"信息流大图", "信息流小图", "信息流组图"};

    private int mPositionIndex;
    private IAdWorker mAdWorker;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.standard_news_feed_layout);
        final ViewGroup container = (ViewGroup) findViewById(R.id.container);

        Spinner adTypeSpinner = (Spinner) findViewById(R.id.template_type);
        adTypeSpinner.setAdapter(new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, POSITION_NAMES));

        adTypeSpinner.setOnItemSelectedListener(new Spinner.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                mPositionIndex = position;
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });

        try {
            final Button fetch = (Button) findViewById(R.id.btn_fetch);
            mAdWorker = AdWorkerFactory.getAdWorker(this, container, new MimoAdListener() {
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
                }

                @Override
                public void onAdLoaded() {
                }
            }, AdType.AD_STANDARD_NEWSFEED);
            fetch.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        mAdWorker.loadAndShow(POSITION_ID[mPositionIndex]);
                    } catch (Exception e) {
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        try {
            mAdWorker.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
