.class public Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PaymentMethodSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mPaymentMethodView:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 190
    iput-object p1, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;->mPaymentMethodView:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    .line 191
    return-void
.end method
