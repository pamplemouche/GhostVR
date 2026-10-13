.class public final Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProviderFactory;
.super Ljava/lang/Object;
.source "AndroidDocumentProviderFactory.java"

# interfaces
.implements Lcom/facebook/stetho/common/ThreadBound;
.implements Lcom/facebook/stetho/inspector/elements/DocumentProviderFactory;


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private final mDescriptorProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProviderFactory;->mApplication:Landroid/app/Application;

    .line 36
    invoke-static {p2}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProviderFactory;->mDescriptorProviders:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProviderFactory;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method public verifyThreadAccess()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/android/AndroidDocumentProviderFactory;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/stetho/common/android/HandlerUtil;->verifyThreadAccess(Landroid/os/Handler;)V

    .line 54
    return-void
.end method
