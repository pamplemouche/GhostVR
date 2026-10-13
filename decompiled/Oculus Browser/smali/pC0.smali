.class public LpC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqy0;


# instance fields
.field public final synthetic a:LOB0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;LOB0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LpC0;->a:LOB0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LpC0;->a:LOB0;

    .line 2
    iget-boolean p1, p1, LOB0;->B:Z

    return p1
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LpC0;->a:LOB0;

    .line 2
    iget-boolean p1, p1, LOB0;->B:Z

    return p1
.end method
