.class public interface abstract Lcom/facebook/quicklog/QuickEventListener;
.super Ljava/lang/Object;
.source "QuickEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;
    }
.end annotation


# static fields
.field public static final ALL_MARKERS_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/facebook/quicklog/QuickEventListener;->ALL_MARKERS_ARRAY:[I

    return-void
.end method


# virtual methods
.method public abstract getListenerMarkers()Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;
.end method

.method public abstract onMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMarkerCancel(Lcom/facebook/quicklog/QuickEvent;)V
.end method

.method public abstract onMarkerNote(Lcom/facebook/quicklog/QuickEvent;)V
.end method

.method public abstract onMarkerPoint(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Lcom/facebook/quicklog/PointData;JZI)V
    .param p3    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMarkerRestart(Lcom/facebook/quicklog/QuickEvent;)V
.end method

.method public abstract onMarkerStart(Lcom/facebook/quicklog/QuickEvent;)V
.end method

.method public abstract onMarkerStop(Lcom/facebook/quicklog/QuickEvent;)V
.end method

.method public abstract onQuickMarkerEnd(II)V
.end method

.method public abstract onQuickMarkerStart(II)Z
.end method

.method public abstract setQuickPerformanceLogger(Lcom/facebook/quicklog/QuickPerformanceLogger;)V
.end method
