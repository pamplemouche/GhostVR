.class public interface abstract Llibraries/marauder/analytics/AnalyticsLogger;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"


# virtual methods
.method public abstract flush()V
.end method

.method public abstract queueUpload()V
.end method

.method public abstract registerTextView(Landroid/widget/TextView;)V
.end method

.method public abstract reportEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V
.end method

.method public abstract reportLogin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportLogout()V
.end method

.method public abstract reportStarredEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V
.end method

.method public abstract reportTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract unregisterTextView(Landroid/widget/TextView;)V
.end method
