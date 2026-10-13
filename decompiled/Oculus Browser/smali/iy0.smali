.class public final synthetic Liy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/HomepagePreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/HomepagePreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liy0;->w:Lorg/chromium/chrome/browser/preferences/HomepagePreferences;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p1, p0, Liy0;->w:Lorg/chromium/chrome/browser/preferences/HomepagePreferences;

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->E0:Lpt0;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lpt0;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method
