.class public final synthetic LlC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

.field public final x:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LlC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iput-object p2, p0, LlC0;->x:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, LlC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iget-object v0, p0, LlC0;->x:Landroid/content/Intent;

    .line 1
    invoke-virtual {p1, v0}, Lz2;->a(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
