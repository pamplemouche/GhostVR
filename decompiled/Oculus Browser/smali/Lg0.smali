.class public final synthetic LLg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LUg0;

.field public final x:LCg0;


# direct methods
.method public constructor <init>(LUg0;LCg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLg0;->w:LUg0;

    iput-object p2, p0, LLg0;->x:LCg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LLg0;->w:LUg0;

    iget-object v1, p0, LLg0;->x:LCg0;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1
    invoke-interface {v1}, LCg0;->u()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-boolean v0, v0, LUg0;->f:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->a()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v1

    if-eqz v0, :cond_6

    .line 5
    new-instance v0, LK91;

    .line 6
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-direct {v0, v3}, LK91;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v3, v1, Lorg/chromium/policy/CombinedPolicyProvider;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, v1, Lorg/chromium/policy/CombinedPolicyProvider;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v3, v1, Lorg/chromium/policy/CombinedPolicyProvider;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 11
    iput v3, v0, LL91;->b:I

    .line 12
    iput-object v1, v0, LL91;->a:Lorg/chromium/policy/CombinedPolicyProvider;

    .line 13
    iget-object v3, v0, LJ91;->c:Landroid/content/Context;

    iget-object v4, v0, LJ91;->d:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/os/Handler;

    .line 14
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->e()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 16
    iget-wide v1, v1, Lorg/chromium/policy/CombinedPolicyProvider;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {v0}, LL91;->a()V

    .line 17
    :cond_1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 20
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 23
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 24
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v3}, LYT;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const v4, 0x11e4cbb6

    if-ge v3, v4, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->g:Landroid/content/ComponentName;

    :cond_5
    :goto_1
    return-void

    .line 27
    :cond_6
    throw v2

    .line 28
    :cond_7
    throw v2
.end method
