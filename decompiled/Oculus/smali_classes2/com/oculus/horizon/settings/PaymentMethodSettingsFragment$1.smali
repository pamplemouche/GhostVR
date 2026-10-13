.class Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PaymentMethodSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
