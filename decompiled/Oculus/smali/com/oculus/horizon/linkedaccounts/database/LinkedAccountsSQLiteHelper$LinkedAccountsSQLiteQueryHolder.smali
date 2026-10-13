.class final Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;
.super Ljava/lang/Object;
.source "LinkedAccountsSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedAccountsSQLiteQueryHolder"
.end annotation


# instance fields
.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;->mSelection:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;->mSelectionArgs:[Ljava/lang/String;

    .line 230
    return-void
.end method

.method public static varargs populate([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;
    .locals 4

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    array-length v0, p0

    new-array v2, v0, [Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 245
    if-eqz v0, :cond_0

    .line 246
    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 249
    const-string/jumbo v3, "service_provider = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    new-instance v0, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper$LinkedAccountsSQLiteQueryHolder;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method
