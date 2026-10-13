.class public abstract Lcom/facebook/rti/push/client/KeyValueWrapper;
.super Ljava/lang/Object;
.source "KeyValueWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOOL_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/push/client/KeyValueWrapper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/push/client/KeyValueWrapper",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/push/client/KeyValueWrapper",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/push/client/KeyValueWrapper",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/client/KeyValueWrapper;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/facebook/rti/push/client/KeyValueWrapper$1;

    invoke-direct {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/push/client/KeyValueWrapper;->STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    .line 45
    new-instance v0, Lcom/facebook/rti/push/client/KeyValueWrapper$2;

    invoke-direct {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper$2;-><init>()V

    sput-object v0, Lcom/facebook/rti/push/client/KeyValueWrapper;->INT_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    .line 83
    new-instance v0, Lcom/facebook/rti/push/client/KeyValueWrapper$3;

    invoke-direct {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper$3;-><init>()V

    sput-object v0, Lcom/facebook/rti/push/client/KeyValueWrapper;->BOOL_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    .line 121
    new-instance v0, Lcom/facebook/rti/push/client/KeyValueWrapper$4;

    invoke-direct {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper$4;-><init>()V

    sput-object v0, Lcom/facebook/rti/push/client/KeyValueWrapper;->LONG_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bundleToSharedPrefs(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->get(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/facebook/rti/push/client/KeyValueWrapper;->TAG:Ljava/lang/String;

    const-string v2, "bundleToSharedPrefs got %s for key %s"

    invoke-static {v1, v2, v0, p3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0, p2, p4, v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lcom/facebook/rti/push/client/KeyValueWrapper;->TAG:Ljava/lang/String;

    const-string v2, "bundleToSharedPrefs got ClassCastException"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract get(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "TValueType;)TValueType;"
        }
    .end annotation
.end method

.method public abstract get(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TValueType;)TValueType;"
        }
    .end annotation
.end method

.method public abstract getValueType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "TValueType;)V"
        }
    .end annotation
.end method

.method public abstract set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TValueType;)V"
        }
    .end annotation
.end method

.method public sharedPrefsToBundle(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p4, v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->get(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/facebook/rti/push/client/KeyValueWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sharedPrefsToBundle got %s for key %s"

    invoke-static {v1, v2, v0, p4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0, p2, p3, v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-object v1, Lcom/facebook/rti/push/client/KeyValueWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sharedPrefsToBundle got ClassCastException"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
