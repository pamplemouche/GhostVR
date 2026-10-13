.class public LgC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, LgC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, LgC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 2
    iget-object p2, p1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q0:Ljava/util/List;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "MobileSettingsStorageClearAll"

    .line 3
    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    .line 4
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 5
    :goto_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOC0;

    .line 7
    iget-object v0, v0, LOC0;->n0:LyC0;

    .line 8
    new-instance v2, LfC0;

    invoke-direct {v2, p1, p2}, LfC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;[I)V

    invoke-virtual {v0, v2}, LyC0;->a(LxC0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
