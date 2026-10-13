.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowToast"
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoftError:Lcom/facebook/common/errorreporting/SoftError;


# direct methods
.method public constructor <init>(Lcom/facebook/common/errorreporting/SoftError;Landroid/content/Context;)V
    .locals 1
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;->mSoftError:Lcom/facebook/common/errorreporting/SoftError;

    .line 631
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;->mContext:Ljava/lang/ref/WeakReference;

    .line 632
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 636
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 637
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 638
    const-string v2, "[FB-Only] SoftErrorFailHarder: %s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;->mSoftError:Lcom/facebook/common/errorreporting/SoftError;

    .line 641
    invoke-virtual {v5}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;->mSoftError:Lcom/facebook/common/errorreporting/SoftError;

    invoke-virtual {v4}, Lcom/facebook/common/errorreporting/SoftError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v6

    .line 639
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "toastStr":Ljava/lang/String;
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 644
    .end local v1    # "toastStr":Ljava/lang/String;
    :cond_0
    return-void
.end method
