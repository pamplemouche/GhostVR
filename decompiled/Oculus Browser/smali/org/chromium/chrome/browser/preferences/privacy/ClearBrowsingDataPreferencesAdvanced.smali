.class public Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferencesAdvanced;
.super Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;-><init>()V

    return-void
.end method


# virtual methods
.method public P()Ljava/util/List;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Q()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public S()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "History.ClearBrowsingData.UserDeletedFromTab"

    .line 1
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    const-string v0, "ClearBrowsingData_AdvancedTab"

    .line 2
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    return-void
.end method
