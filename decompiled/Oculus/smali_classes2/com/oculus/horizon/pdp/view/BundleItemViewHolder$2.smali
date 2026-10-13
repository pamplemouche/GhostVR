.class Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;
.super Ljava/lang/Object;
.source "BundleItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/View;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/horizon/logging/OculusLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$3;->$SwitchMap$com$oculus$horizon$pdp$view$BundleItemViewHolder$Status:[I

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$200(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$300(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;Lcom/oculus/horizon/api/common/Item;)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$400(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;Lcom/oculus/horizon/api/common/Item;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
