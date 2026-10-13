.class public final synthetic LKA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LKA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->T()V

    return-void
.end method
