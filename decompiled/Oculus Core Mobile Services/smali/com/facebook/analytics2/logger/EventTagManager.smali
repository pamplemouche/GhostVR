.class public Lcom/facebook/analytics2/logger/EventTagManager;
.super Ljava/lang/Object;
.source "EventTagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/EventTagManager$EventTag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNtTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_NT_EVENTS:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 25
    return-void
.end method

.method public static setReactNativeTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_REACT_NATIVE:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 20
    return-void
.end method

.method public static setUslTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->USL_ENABLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 16
    return-void
.end method

.method public static setXplatTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_XPLAT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 30
    return-void
.end method

.method public static tagHasDownloadedSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 35
    return-void
.end method

.method public static tagIsEventInDownloadedSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_IN_DOWNLOADED_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 40
    return-void
.end method

.method public static tagIsEventInSessionlessSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_IN_SESSIONLESS_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 45
    return-void
.end method

.method public static tagIsEventLoggedDuringStartup(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_LOGGED_DURING_STARTUP:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    .line 50
    return-void
.end method
