.class public final synthetic LMF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/signin/SyncPromoView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SyncPromoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMF0;->w:Lorg/chromium/chrome/browser/signin/SyncPromoView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LMF0;->w:Lorg/chromium/chrome/browser/signin/SyncPromoView;

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->g(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
