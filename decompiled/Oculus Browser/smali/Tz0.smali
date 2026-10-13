.class public LTz0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static d:LTz0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

.field public final b:Ljava/util/Map;

.field public c:LSz0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iput-object v0, p0, LTz0;->a:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LTz0;->b:Ljava/util/Map;

    .line 4
    iget-object v0, p0, LTz0;->a:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {v0, v1}, LJ/N;->MDgZc9ox(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LHz0;

    .line 8
    iget-object v2, p0, LTz0;->b:Ljava/util/Map;

    .line 9
    iget-object v3, v1, LHz0;->a:Ljava/lang/String;

    .line 10
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public static a(I)V
    .locals 2

    const-string v0, "LanguageSettings.Actions"

    const/16 v1, 0x9

    .line 7
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static b()LTz0;
    .locals 1

    .line 1
    sget-object v0, LTz0;->d:LTz0;

    if-nez v0, :cond_0

    new-instance v0, LTz0;

    invoke-direct {v0}, LTz0;-><init>()V

    sput-object v0, LTz0;->d:LTz0;

    .line 2
    :cond_0
    sget-object v0, LTz0;->d:LTz0;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, LTz0;->c:LSz0;

    if-eqz v0, :cond_0

    check-cast v0, LRz0;

    invoke-virtual {v0}, LRz0;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0, p1, p2}, LJ/N;->MRMyVGan(Ljava/lang/Object;Ljava/lang/String;I)V

    const/16 p1, 0x8

    .line 4
    invoke-static {p1}, LTz0;->a(I)V

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0}, LTz0;->a()V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
