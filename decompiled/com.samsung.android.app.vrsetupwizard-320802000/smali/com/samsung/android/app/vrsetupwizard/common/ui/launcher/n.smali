.class public Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10800000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :try_start_0
    const-string v1, "[HoldPopupWindow] addToShortcut"

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-static {v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x1a

    const-string v8, ")"

    const-string v9, "[HoldPopupWindow] Shortcut added ("

    if-lt v5, v7, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    const-class v7, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x14010000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    invoke-direct {v4, v7, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0065

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "duplicate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, "pkg"

    goto :goto_0

    :cond_1
    const-string v1, "com.android.settings.ApplicationPkgName"

    :goto_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;I)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/q;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/q;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/r;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/r;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/s;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/s;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const p1, 0x7f090077

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sget-object v5, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    rem-int/lit8 v6, p3, 0x4

    const/4 v7, 0x4

    if-nez v6, :cond_0

    sget-object v5, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    goto :goto_0

    :cond_0
    add-int/2addr v6, v2

    if-ne v6, v7, :cond_1

    sget-object v5, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->c:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;

    :cond_1
    :goto_0
    div-int/2addr p3, v7

    const/4 v6, 0x3

    if-ne p3, v6, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    const v8, 0x7f070038

    invoke-static {v7, v8}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a:Landroid/content/Context;

    const v9, 0x7f070037

    invoke-static {v8, v9}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/t;->a:[I

    invoke-virtual {v5}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/u;->ordinal()I

    move-result v5

    aget v5, v9, v5

    const/4 v9, 0x2

    if-eq v5, v2, :cond_7

    if-eq v5, v9, :cond_5

    if-eq v5, v6, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/2addr v5, v9

    sub-int/2addr v4, v7

    div-int/2addr v4, v9

    if-eqz p3, :cond_4

    iget-object v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    const v7, 0x7f1001d5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    const v6, 0x7f1001d1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v7

    div-int/2addr v6, v9

    sub-int/2addr v4, v6

    if-eqz p3, :cond_6

    iget-object v6, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    const v7, 0x7f1001d7

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    sub-int/2addr v6, v0

    sub-int v0, v6, v8

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    const v6, 0x7f1001d3

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    int-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v7

    div-int/2addr v4, v9

    if-eqz p3, :cond_8

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    const v6, 0x7f1001d6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v0

    sub-int v0, v5, v8

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    const v5, 0x7f1001d2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    int-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_4
    const/4 v0, 0x0

    :goto_5
    const/4 v5, 0x0

    :goto_6
    const/16 v4, 0x8

    if-eqz p3, :cond_9

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    const/16 p3, 0x11

    invoke-virtual {p1, p2, v5, v0, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return v2
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->b:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method
