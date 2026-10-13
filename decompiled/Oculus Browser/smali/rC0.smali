.class public LrC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMC0;


# instance fields
.field public final a:LzC0;

.field public final synthetic b:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;LzC0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LrC0;->b:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LrC0;->a:LzC0;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget-object v0, p0, LrC0;->b:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LrC0;->b:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iget-object v1, p0, LrC0;->a:LzC0;

    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(LzC0;Ljava/util/Collection;)LyC0;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 4
    iget-object p1, p0, LrC0;->b:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->O()V

    return-void
.end method
