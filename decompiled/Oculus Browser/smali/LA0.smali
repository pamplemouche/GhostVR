.class public LLA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIA0;
.implements Lmc;


# instance fields
.field public A:Z

.field public final w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

.field public final x:I

.field public final y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

.field public z:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;ILorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LLA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    .line 3
    iput p3, p0, LLA0;->x:I

    .line 4
    iput-object p4, p0, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 5
    new-instance p2, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;

    .line 6
    invoke-static {p3}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->h(I)I

    move-result p4

    iget-object v0, p0, LLA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->Q()I

    move-result v0

    invoke-direct {p2, p0, p4, v0}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;-><init>(LIA0;II)V

    iput-object p2, p0, LLA0;->z:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;

    .line 7
    iget-object p2, p0, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 8
    iput-object p0, p2, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 9
    invoke-virtual {p2, p6}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 10
    iget-object p2, p0, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {p2, p5}, LKc;->f(Z)V

    .line 11
    iget-object p2, p0, LLA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    invoke-virtual {p2}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p4, 0x168

    if-lt p2, p4, :cond_6

    .line 12
    iget-object p2, p0, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    if-eqz p3, :cond_5

    const/4 p4, 0x1

    if-eq p3, p4, :cond_4

    const/4 p4, 0x2

    if-eq p3, p4, :cond_3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    const p3, 0x7f080222

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const p3, 0x7f080126

    goto :goto_0

    :cond_2
    const p3, 0x7f080230

    goto :goto_0

    :cond_3
    const p3, 0x7f08010f

    goto :goto_0

    :cond_4
    const p3, 0x7f08029e

    goto :goto_0

    :cond_5
    const p3, 0x7f080233

    .line 14
    :goto_0
    invoke-static {p1, p3}, Lxy0;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 1
    iget-object p1, p0, LLA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->a(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, LLA0;->A:Z

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget v1, p0, LLA0;->x:I

    .line 4
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->h(I)I

    move-result v1

    iget-object v2, p0, LLA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->Q()I

    move-result v2

    iget-object v3, p0, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 5
    iget-boolean v3, v3, LKc;->k0:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0, v1, v2, v3}, LJ/N;->MngbWiGV(Ljava/lang/Object;IIZ)V

    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
