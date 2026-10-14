.class Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "[VRLauncherActivity]("

    if-eqz v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") replaced"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x1a

    if-eqz v1, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") added "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_a

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") removed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setAdapter(Landroid/widget/Adapter;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->d(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setCurrentItem(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_8

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    :cond_8
    const-string p2, "com.oculus.gearchina"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "notification"

    if-eqz p2, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 p2, 0x12c

    :goto_2
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    :cond_9
    const-string p2, "com.samsung.android.app.vr.launcher"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 p2, 0x190

    goto :goto_2

    :cond_a
    :goto_3
    return-void
.end method
