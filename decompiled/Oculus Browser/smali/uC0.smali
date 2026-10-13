.class public LuC0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LuC0;->a:I

    .line 3
    iput-object p2, p0, LuC0;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/16 p0, 0x2e

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0x27

    return p0

    :pswitch_4
    const/16 p0, 0x1f

    return p0

    :pswitch_5
    const/16 p0, 0x21

    return p0

    :pswitch_6
    const/16 p0, 0x10

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_8
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/16 p0, 0x9

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x5

    return p0

    :pswitch_c
    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x23

    return p0

    :pswitch_e
    const/16 p0, 0xa

    return p0

    :pswitch_f
    const/16 p0, 0x16

    return p0

    :pswitch_10
    const/16 p0, 0x17

    return p0

    :pswitch_11
    const/16 p0, 0x1a

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(I)LuC0;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 1
    invoke-static {v0}, LuC0;->b(I)I

    move-result v1

    if-ne v1, p0, :cond_0

    invoke-static {v0}, LuC0;->d(I)LuC0;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(I)LuC0;
    .locals 2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, LaC0;

    invoke-direct {p0}, LaC0;-><init>()V

    return-object p0

    :cond_0
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    .line 2
    new-instance p0, LbC0;

    invoke-direct {p0}, LbC0;-><init>()V

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string v0, "android.permission.CAMERA"

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    const-string v0, "android.permission.RECORD_AUDIO"

    goto :goto_0

    :cond_3
    const-string v0, ""

    .line 3
    :goto_0
    new-instance v1, LuC0;

    invoke-direct {v1, p0, v0}, LuC0;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public static e(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "bluetooth_scanning"

    return-object p0

    :pswitch_1
    const-string p0, "automatic_downloads"

    return-object p0

    :pswitch_2
    const-string p0, "usb"

    return-object p0

    :pswitch_3
    const-string p0, "use_storage"

    return-object p0

    :pswitch_4
    const-string p0, "sound"

    return-object p0

    :pswitch_5
    const-string p0, "sensors"

    return-object p0

    :pswitch_6
    const-string p0, "protected_content"

    return-object p0

    :pswitch_7
    const-string p0, "popups"

    return-object p0

    :pswitch_8
    const-string p0, "notifications"

    return-object p0

    :pswitch_9
    const-string p0, "microphone"

    return-object p0

    :pswitch_a
    const-string p0, "javascript"

    return-object p0

    :pswitch_b
    const-string p0, "device_location"

    return-object p0

    :pswitch_c
    const-string p0, "cookies"

    return-object p0

    :pswitch_d
    const-string p0, "clipboard"

    return-object p0

    :pswitch_e
    const-string p0, "camera"

    return-object p0

    :pswitch_f
    const-string p0, "background_sync"

    return-object p0

    :pswitch_10
    const-string p0, "autoplay"

    return-object p0

    :pswitch_11
    const-string p0, "ads"

    return-object p0

    :pswitch_12
    const-string p0, "all_sites"

    return-object p0

    :goto_0
    const-string p0, ""

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e()Z
    .locals 1

    const-string v0, "SubresourceFilter"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e3

    invoke-static {v0, v1}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06014b

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 6
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/app/Activity;Z)V
    .locals 11

    .line 12
    invoke-virtual {p0, p3}, LuC0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "package"

    .line 15
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    :goto_0
    invoke-virtual {p0, p3}, LuC0;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    xor-int/lit8 v2, p4, 0x1

    .line 18
    invoke-virtual {p0}, LuC0;->b()I

    move-result v3

    const-string v4, "AndroidSiteSettingsUIRefresh"

    .line 19
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f130147

    const v6, 0x7f130148

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const v5, 0x7f130144

    goto :goto_1

    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const v5, 0x7f13013f

    goto :goto_1

    :cond_2
    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    const v5, 0x7f130145

    goto :goto_1

    :cond_3
    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    const v5, 0x7f130146

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v2, :cond_5

    const v5, 0x7f130148

    :cond_5
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v2, :cond_7

    const v5, 0x7f130148

    :cond_7
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    :goto_2
    invoke-virtual {p0, p3}, LuC0;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014b

    .line 24
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 25
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v4, "</link>"

    const-string v6, "<link>"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_8

    new-array v9, v8, [LWe1;

    .line 26
    new-instance v10, LWe1;

    invoke-direct {v10, v6, v4, v5}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v9, v7

    invoke-static {v2, v9}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v2

    .line 27
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 28
    iput-object v0, p1, Landroid/support/v7/preference/Preference;->J:Landroid/content/Intent;

    if-nez p4, :cond_8

    .line 29
    invoke-virtual {p0, p3}, LuC0;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    if-eqz v1, :cond_a

    new-array p1, v8, [LWe1;

    .line 30
    new-instance v2, LWe1;

    invoke-direct {v2, v6, v4, v5}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, p1, v7

    invoke-static {v3, p1}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 32
    iput-object v1, p2, Landroid/support/v7/preference/Preference;->J:Landroid/content/Intent;

    if-nez p4, :cond_a

    if-nez v0, :cond_9

    .line 33
    invoke-virtual {p0, p3}, LuC0;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 34
    :cond_9
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 35
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)Z
    .locals 1

    .line 1
    iget v0, p0, LuC0;->a:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    .line 7
    iget-object v0, p0, LuC0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p0, LuC0;->b:Ljava/lang/String;

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 11
    invoke-static {p1, v0, v2, v3}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, LuC0;->a:I

    invoke-static {v0}, LuC0;->b(I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 4

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const/16 v1, 0x11

    .line 3
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 4
    invoke-static {v0, v1}, LJ/N;->M$7ik4Dx(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 5
    :cond_0
    throw v2

    :cond_1
    const/4 v1, 0x3

    .line 6
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v1, 0x16

    .line 7
    invoke-static {v0, v1}, LJ/N;->M$7ik4Dx(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 8
    :cond_2
    throw v2

    :cond_3
    const/4 v1, 0x6

    .line 9
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 10
    invoke-static {v0}, LJ/N;->MwHRuzKp(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_4
    throw v2

    :cond_5
    const/4 v1, 0x7

    .line 11
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 12
    invoke-static {v0}, LJ/N;->Mf7wdfcH(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_6
    throw v2

    :cond_7
    const/16 v1, 0x8

    .line 13
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    .line 14
    invoke-static {v0, v1}, LJ/N;->M$7ik4Dx(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 15
    :cond_8
    throw v2

    :cond_9
    const/4 v1, 0x4

    .line 16
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_a

    .line 17
    invoke-static {v0}, LJ/N;->M4IWMCbH(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_a
    throw v2

    :cond_b
    const/16 v3, 0x9

    .line 18
    invoke-virtual {p0, v3}, LuC0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v0, :cond_c

    .line 19
    invoke-static {v0}, LJ/N;->M0llLR0N(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_c
    throw v2

    :cond_d
    const/16 v3, 0xb

    .line 20
    invoke-virtual {p0, v3}, LuC0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v0, :cond_e

    .line 21
    invoke-static {v0, v1}, LJ/N;->M$7ik4Dx(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 22
    :cond_e
    throw v2

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, LuC0;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LuC0;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public d()Z
    .locals 3

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const/4 v1, 0x6

    .line 5
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, LJ/N;->MH3vifJf(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    throw v2

    :cond_1
    const/4 v1, 0x7

    .line 7
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0}, LJ/N;->MKBws2fI(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    throw v2

    :cond_3
    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 10
    invoke-static {v0}, LJ/N;->MWrSk_5Z(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_4
    throw v2

    :cond_5
    const/16 v1, 0x9

    .line 11
    invoke-virtual {p0, v1}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 12
    invoke-static {v0}, LJ/N;->Me011CUb(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_6
    throw v2

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
