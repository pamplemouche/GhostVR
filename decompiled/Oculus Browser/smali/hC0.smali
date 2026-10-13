.class public LhC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqy0;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LhC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 3
    invoke-virtual {p1}, LuC0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LhC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 5
    invoke-virtual {p1}, LuC0;->d()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LhC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 3
    invoke-virtual {p1}, LuC0;->d()Z

    move-result p1

    return p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lpy0;->a(Lqy0;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
