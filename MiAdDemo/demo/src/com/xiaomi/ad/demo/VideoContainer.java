package com.xiaomi.ad.demo;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

import com.miui.zeus.mimo.sdk.ad.IVideoAdWorker;

/**
 * Created by mi on 17-12-5.
 */

class VideoContainer extends FrameLayout {
    IVideoAdWorker mWorker;

    public VideoContainer(Context context) {
        super(context);
    }

    public VideoContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setWorker(IVideoAdWorker worker) {
        mWorker = worker;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            // 如果希望自动开始播放
            if (mWorker.getStatus() == IVideoAdWorker.FLOW_VIDEO_UNKNOWN) {
                mWorker.play();
            }
        } catch (Exception e) {
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}