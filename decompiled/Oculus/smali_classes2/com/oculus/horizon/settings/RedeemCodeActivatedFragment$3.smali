.class Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;
.super Ljava/lang/Object;
.source "RedeemCodeActivatedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    .line 288
    invoke-virtual {v1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    .line 289
    invoke-static {v2}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$100(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    .line 290
    invoke-static {v3}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$200(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    .line 291
    invoke-static {v4}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$300(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)I

    move-result v4

    .line 287
    invoke-static {v1, v2, v3, v4}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getBundleName(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$400(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/lang/String;)V

    .line 292
    return-void
.end method
