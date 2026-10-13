.class interface abstract Lcom/oculus/logging/legacy/OculusLogger$EventFactory;
.super Ljava/lang/Object;
.source "OculusLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/logging/legacy/OculusLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EventFactory"
.end annotation


# virtual methods
.method public abstract newEvent(Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
.end method

.method public abstract newEvent(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
.end method
