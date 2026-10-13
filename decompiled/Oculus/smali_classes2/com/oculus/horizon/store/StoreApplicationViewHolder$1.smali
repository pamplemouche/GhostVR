.class Lcom/oculus/horizon/store/StoreApplicationViewHolder$1;
.super Ljava/lang/Object;
.source "StoreApplicationViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreApplicationViewHolder;->bindModel(Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$000(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)V

    .line 170
    return-void
.end method
