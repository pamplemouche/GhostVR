.class public interface abstract Lcom/facebook/auth/viewercontext/ViewerContextManager;
.super Ljava/lang/Object;
.source "ViewerContextManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final VIEWER_CONTEXT_EXTRA:Ljava/lang/String; = "com.facebook.orca.auth.OVERRIDDEN_VIEWER_CONTEXT"


# virtual methods
.method public abstract getIntentForViewerContext()Landroid/content/Intent;
.end method

.method public abstract getLoggedInUserViewerContext()Lcom/facebook/auth/viewercontext/ViewerContext;
.end method

.method public abstract getOriginalViewerContext()Lcom/facebook/auth/viewercontext/ViewerContext;
.end method

.method public abstract getOverriddenViewerContext()Lcom/facebook/auth/viewercontext/ViewerContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getViewerContext()Lcom/facebook/auth/viewercontext/ViewerContext;
.end method

.method public abstract getViewerContextForTransferBetweenThreads()Lcom/facebook/auth/viewercontext/ViewerContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract maybeAddOverriddenViewerContext(Landroid/content/Intent;)Landroid/content/Intent;
    .param p1    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract popViewerContext()V
.end method

.method public abstract pushViewerContext(Lcom/facebook/auth/viewercontext/ViewerContext;)Lcom/facebook/auth/viewercontext/PushedViewerContext;
    .param p1    # Lcom/facebook/auth/viewercontext/ViewerContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOverriddenViewerContext(Lcom/facebook/auth/viewercontext/ViewerContext;)V
.end method
