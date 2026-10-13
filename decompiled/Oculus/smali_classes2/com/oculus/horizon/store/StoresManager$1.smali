.class Lcom/oculus/horizon/store/StoresManager$1;
.super Landroid/util/LruCache;
.source "StoresManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoresManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/oculus/horizon/store/StoreItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoresManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoresManager;I)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oculus/horizon/store/StoresManager$1;->this$0:Lcom/oculus/horizon/store/StoresManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method
