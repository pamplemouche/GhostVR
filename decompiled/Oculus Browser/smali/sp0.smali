.class public Lsp0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:LaV;

.field public static final d:LaV;

.field public static final e:LaV;

.field public static final f:LaV;

.field public static final g:LVU;

.field public static final h:LaV;


# instance fields
.field public final a:Lop0;

.field public b:Lg11;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LaV;

    const/4 v1, 0x4

    const-string v2, "VoiceInteraction.StartEventSource"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsp0;->c:LaV;

    .line 2
    new-instance v0, LaV;

    const-string v2, "VoiceInteraction.FinishEventSource"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsp0;->d:LaV;

    .line 3
    new-instance v0, LaV;

    const-string v2, "VoiceInteraction.DismissedEventSource"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsp0;->e:LaV;

    .line 4
    new-instance v0, LaV;

    const-string v2, "VoiceInteraction.FailureEventSource"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsp0;->f:LaV;

    .line 5
    new-instance v0, LVU;

    const-string v1, "VoiceInteraction.VoiceSearchResult"

    invoke-direct {v0, v1}, LVU;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsp0;->g:LVU;

    .line 6
    new-instance v0, LaV;

    const-string v1, "VoiceInteraction.VoiceResultConfidenceValue"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsp0;->h:LaV;

    return-void
.end method

.method public constructor <init>(Lop0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsp0;->a:Lop0;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lsp0;->a:Lop0;

    invoke-interface {v0}, Lop0;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 3
    invoke-virtual {v0, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4
    invoke-virtual {v0, v2}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Lnp0;

    invoke-direct {v1, p0, p1}, Lnp0;-><init>(Lsp0;I)V

    .line 6
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lsp0;->a:Lop0;

    invoke-interface {p1}, Lop0;->q()V

    :goto_0
    return-void

    .line 8
    :cond_3
    sget-object v2, Lsp0;->c:LaV;

    invoke-virtual {v2, p1}, LaV;->a(I)V

    .line 9
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "calling_package"

    .line 12
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v3, "android.speech.extra.WEB_SEARCH_ONLY"

    .line 13
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    new-instance v3, Lpp0;

    invoke-direct {v3, p0, p1}, Lpp0;-><init>(Lsp0;I)V

    const v4, 0x7f130653

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 17
    invoke-static {v2}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Z)Z

    .line 18
    iget-object v0, p0, Lsp0;->a:Lop0;

    invoke-interface {v0}, Lop0;->q()V

    .line 19
    sget-object v0, Lsp0;->f:LaV;

    invoke-virtual {v0, p1}, LaV;->a(I)V

    :cond_5
    return-void
.end method

.method public a()Z
    .locals 5

    .line 20
    iget-object v0, p0, Lsp0;->a:Lop0;

    invoke-interface {v0}, Lop0;->i()LSJ0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 21
    :cond_0
    invoke-interface {v0}, LSJ0;->a()Z

    move-result v0

    .line 22
    iget-object v2, p0, Lsp0;->a:Lop0;

    invoke-interface {v2}, Lop0;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 23
    invoke-virtual {v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 24
    invoke-virtual {v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 25
    :cond_2
    invoke-virtual {v2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 26
    invoke-static {v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method
