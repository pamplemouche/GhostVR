.class Lcom/oculus/logging/legacy/OculusLogger$DefaultEventFactory;
.super Ljava/lang/Object;
.source "OculusLogger.java"

# interfaces
.implements Lcom/oculus/logging/legacy/OculusLogger$EventFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/logging/legacy/OculusLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultEventFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/logging/legacy/OculusLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/logging/legacy/OculusLogger$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/logging/legacy/OculusLogger$DefaultEventFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newEvent(Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Llibraries/marauder/analytics/FlatAnalyticsEvent;

    invoke-direct {v0, p1}, Llibraries/marauder/analytics/FlatAnalyticsEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newEvent(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Llibraries/marauder/analytics/FlatAnalyticsEvent;

    invoke-direct {v0, p1, p2}, Llibraries/marauder/analytics/FlatAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
