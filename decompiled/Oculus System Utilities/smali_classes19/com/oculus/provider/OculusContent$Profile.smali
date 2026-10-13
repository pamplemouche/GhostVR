.class public Lcom/oculus/provider/OculusContent$Profile;
.super Ljava/lang/Object;
.source "OculusContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/provider/OculusContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profile"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_BROWSER:Ljava/lang/String; = "default_browser"

.field public static final HAS_DOCKED:Ljava/lang/String; = "has_docked"

.field public static final HAS_FINISHED_IPD_ADJUST:Ljava/lang/String; = "has_finished_ipd_adjust"

.field public static final HAS_FINISHED_MONTEREY_NUX:Ljava/lang/String; = "has_finished_monterey_nux"

.field public static final HAS_FINISHED_NUX:Ljava/lang/String; = "has_finished_nux"

.field public static final HAS_OPTED_OUT_HSW:Ljava/lang/String; = "has_opted_out_hsw"

.field public static final HAS_OPTED_OUT_OF_MALIBU_RECENTER:Ljava/lang/String; = "has_opted_out_of_malibu_recenter"

.field public static final HAS_SEEN_CONFIRM_QUIT:Ljava/lang/String; = "has_seen_confirm_quit"

.field public static final HAS_SEEN_CONFIRM_QUIT_NOTIF:Ljava/lang/String; = "has_seen_confirm_quit_notif"

.field public static final HAS_SEEN_FOCUS:Ljava/lang/String; = "has_seen_focus"

.field public static final HAS_SEEN_INTERNET_BROWSER_PROMPT:Ljava/lang/String; = "has_seen_internet_browser_prompt"

.field public static final HAS_SEEN_LONG_HSW:Ljava/lang/String; = "has_seen_long_hsw"

.field public static final HAS_SEEN_NUX:Ljava/lang/String; = "has_seen_nux"

.field public static final HAS_SEEN_PARTY_CALLS_NUX:Ljava/lang/String; = "has_seen_party_calls_nux"

.field public static final HAS_SEEN_SAVED_PROMPT:Ljava/lang/String; = "has_seen_saved_prompt"

.field public static final HAS_SEEN_TUTORIAL_PROMPT:Ljava/lang/String; = "has_seen_tutorial_prompt"

.field public static final HIGH_PRIORITY_APPS_DOWNLOAD_STATUS:Ljava/lang/String; = "high_priority_apps_download_status"

.field public static final HIGH_PRIORITY_APPS_DOWNLOAD_WAITTIME:Ljava/lang/String; = "high_priority_apps_download_waittime"

.field public static final HIGH_PRIORITY_APP_DOWNLOAD_PACKAGES:Ljava/lang/String; = "high_priority_apps_pkgs"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final IS_AUTO_UPDATES_ENABLED:Ljava/lang/String; = "auto_updates_enabled"

.field public static final IS_LOGGED_IN:Ljava/lang/String; = "is_logged_in"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final NUX_RESULT:Ljava/lang/String; = "nux_result"

.field public static final NUX_SEEN_COUNT:Ljava/lang/String; = "nux_seen_count"

.field public static final NUX_STATE:Ljava/lang/String; = "nux_state"

.field public static final ROLLOUT_TOKEN:Ljava/lang/String; = "rollout_token"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUriFromNuxPref(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "NuxPref"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NUX Preference cannot be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent;->AUTHORITY:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "profile"

    .line 79
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
