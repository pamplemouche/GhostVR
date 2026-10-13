.class public abstract LWO0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.android.apps.chrome.webapps.webapk"

    const-string v1, "com.google.android.apps.chrome.cct"

    const-string v2, "com.google.android.apps.chrome.webapps"

    .line 1
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LWO0;->a:[Ljava/lang/String;

    const-string v0, "ActivityAssigner.numSavedEntries.webapk"

    const-string v1, "ActivityAssigner.numSavedEntries.cct"

    const-string v2, "ActivityAssigner.numSavedEntries"

    .line 2
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LWO0;->b:[Ljava/lang/String;

    const-string v0, "ActivityAssigner.activityIndex.webapk"

    const-string v1, "ActivityAssigner.activityIndex.cct"

    const-string v2, "ActivityAssigner.activityIndex"

    .line 3
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LWO0;->c:[Ljava/lang/String;

    const-string v0, "ActivityAssigner.webappId.webapk"

    const-string v1, "ActivityAssigner.cctId"

    const-string v2, "ActivityAssigner.webappId"

    .line 4
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LWO0;->d:[Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LWO0;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 4

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 2
    sget-object v3, LWO0;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
