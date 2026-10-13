.class public final synthetic Ley0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ley0;->a:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ley0;->a:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    check-cast p1, Landroid/view/View;

    .line 1
    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->q0:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
