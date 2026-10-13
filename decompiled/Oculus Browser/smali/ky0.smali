.class public final synthetic Lky0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/MainPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lky0;->w:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lky0;->w:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->G0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    .line 2
    iget v1, v1, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->n0:I

    const/4 v2, 0x2

    const-string v3, "account_section"

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->e(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    :goto_0
    return-void
.end method
