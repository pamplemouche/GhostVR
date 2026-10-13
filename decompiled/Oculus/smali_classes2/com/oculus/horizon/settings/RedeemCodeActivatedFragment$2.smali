.class Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$2;
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

.field final synthetic val$downloadableItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$2;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$2;->val$downloadableItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$2;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$2;->val$downloadableItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/util/List;)V

    .line 246
    return-void
.end method
