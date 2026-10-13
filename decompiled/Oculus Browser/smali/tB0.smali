.class public final synthetic LtB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LtB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, LtB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    .line 1
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const/4 v0, 0x3

    .line 2
    invoke-static {p1, v0}, LPE0;->b(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method
