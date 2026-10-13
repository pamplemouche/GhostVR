.class Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$1;
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
    .line 223
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 227
    return-void
.end method
