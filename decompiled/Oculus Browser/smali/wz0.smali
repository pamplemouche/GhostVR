.class public final synthetic Lwz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz0;->w:Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lwz0;->w:Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;

    if-eqz p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tracing_mode"

    .line 4
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->O()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
