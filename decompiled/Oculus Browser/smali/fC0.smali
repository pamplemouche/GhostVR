.class public LfC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxC0;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, LfC0;->b:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    iput-object p2, p0, LfC0;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, LfC0;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    if-gtz v2, :cond_0

    iget-object v0, p0, LfC0;->b:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    :cond_0
    return-void
.end method
