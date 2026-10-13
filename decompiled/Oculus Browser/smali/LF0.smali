.class public final synthetic LLF0;
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

    iput-object p1, p0, LLF0;->w:Lorg/chromium/chrome/browser/signin/SyncPromoView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LLF0;->w:Lorg/chromium/chrome/browser/signin/SyncPromoView;

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
