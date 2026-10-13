.class public final synthetic LOZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEP0;


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:J


# direct methods
.method public constructor <init>(Landroid/content/Intent;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOZ;->a:Landroid/content/Intent;

    iput-wide p2, p0, LOZ;->b:J

    return-void
.end method


# virtual methods
.method public a(LwP0;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, LOZ;->a:Landroid/content/Intent;

    iget-wide v2, v0, LOZ;->b:J

    const-string v4, "org.chromium.chrome.browser.webapp_id"

    .line 1
    invoke-static {v1, v4}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "org.chromium.chrome.browser.webapp_url"

    .line 2
    invoke-static {v1, v4}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    if-eqz v6, :cond_6

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v8, "org.chromium.chrome.browser.webapp_icon"

    .line 3
    invoke-static {v1, v8}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "org.chromium.chrome.browser.webapp_scope"

    .line 4
    invoke-static {v1, v9}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6
    invoke-static {v7}, Lorg/chromium/chrome/browser/ShortcutHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    const-string v10, "org.chromium.chrome.browser.webapp_display_mode"

    const/4 v11, 0x3

    .line 7
    invoke-static {v1, v10, v11}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v12

    const-string v10, "org.chromium.content_public.common.orientation"

    .line 8
    invoke-static {v1, v10, v5}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v13

    const-string v10, "org.chromium.chrome.browser.webapp_source"

    .line 9
    invoke-static {v1, v10, v5}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x10

    if-lt v10, v11, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    move v14, v10

    :goto_0
    const-wide v10, 0x80000000L

    const-string v15, "org.chromium.chrome.browser.theme_color"

    .line 10
    invoke-static {v1, v15, v10, v11}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v15

    .line 11
    invoke-static/range {v15 .. v16}, LAP0;->a(J)Ljava/lang/Integer;

    move-result-object v15

    const-string v4, "org.chromium.chrome.browser.background_color"

    .line 12
    invoke-static {v1, v4, v10, v11}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v10

    .line 13
    invoke-static {v10, v11}, LAP0;->a(J)Ljava/lang/Integer;

    move-result-object v16

    const-string v4, "org.chromium.chrome.browser.is_icon_generated"

    .line 14
    invoke-static {v1, v4, v5}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v18

    const-string v4, "org.chromium.chrome.browser.webapp_icon_adaptive"

    .line 15
    invoke-static {v1, v4, v5}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v19

    const-string v4, "org.chromium.chrome.browser.webapk_force_navigation"

    .line 16
    invoke-static {v1, v4, v5}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v20

    const-string v4, "org.chromium.chrome.browser.webapp_name"

    .line 17
    invoke-static {v1, v4}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v10, "org.chromium.chrome.browser.webapp_title"

    if-nez v4, :cond_3

    .line 18
    invoke-static {v1, v10}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v5

    :cond_3
    const-string v11, "org.chromium.chrome.browser.webapp_short_name"

    .line 19
    invoke-static {v1, v11}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    .line 20
    invoke-static {v1, v10}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v5

    :cond_4
    move-object v11, v1

    .line 21
    :cond_5
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 22
    invoke-static {v1}, LPf1;->a(Landroid/content/Context;)I

    move-result v17

    .line 23
    new-instance v1, LxP0;

    new-instance v10, LyP0;

    invoke-direct {v10, v8}, LyP0;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    move-object v8, v9

    move-object v9, v10

    move-object v10, v4

    invoke-direct/range {v5 .. v20}, LxP0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LyP0;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;IZZZ)V

    .line 24
    new-instance v4, LAP0;

    invoke-direct {v4, v1}, LAP0;-><init>(LxP0;)V

    goto :goto_2

    .line 25
    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete data provided: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "WebappInfo"

    invoke-static {v5, v1, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    .line 26
    :cond_7
    new-instance v1, LzP0;

    invoke-direct {v1, v4}, LzP0;-><init>(LY10;)V

    :goto_3
    if-eqz v1, :cond_8

    move-object/from16 v4, p1

    .line 27
    invoke-virtual {v4, v1}, LwP0;->a(LzP0;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 28
    invoke-static {v2, v3}, LJ/N;->M5qwIocH(J)V

    :cond_8
    return-void
.end method
