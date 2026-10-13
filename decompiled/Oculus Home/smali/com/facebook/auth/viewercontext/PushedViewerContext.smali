.class public interface abstract Lcom/facebook/auth/viewercontext/PushedViewerContext;
.super Ljava/lang/Object;
.source "PushedViewerContext.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final NOT_PUSHED:Lcom/facebook/auth/viewercontext/PushedViewerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/auth/viewercontext/PushedViewerContext$1;

    invoke-direct {v0}, Lcom/facebook/auth/viewercontext/PushedViewerContext$1;-><init>()V

    sput-object v0, Lcom/facebook/auth/viewercontext/PushedViewerContext;->NOT_PUSHED:Lcom/facebook/auth/viewercontext/PushedViewerContext;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method
