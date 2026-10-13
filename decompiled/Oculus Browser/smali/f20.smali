.class public final synthetic Lf20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lg20;


# direct methods
.method public constructor <init>(Lg20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf20;->w:Lg20;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lf20;->w:Lg20;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v2

    .line 2
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, v0, Lg20;->a:Landroid/content/SharedPreferences;

    const-string v4, "trusted_web_activity_uids"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v1, v2}, Lg20;->a(Ljava/lang/Throwable;LqU;)V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 5
    invoke-static {v0, v2}, Lg20;->a(Ljava/lang/Throwable;LqU;)V

    throw v1

    .line 6
    :cond_0
    throw v1
.end method
