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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNtTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .line 24
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_NT_EVENTS:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    return-void
.end method

.method public static setReactNativeTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .line 19
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_REACT_NATIVE:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    return-void
.end method

.method public static setUslTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .line 15
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->USL_ENABLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    return-void
.end method

.method public static setXplatTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_XPLAT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->getTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->setTag(J)V

    return-void
.end method
