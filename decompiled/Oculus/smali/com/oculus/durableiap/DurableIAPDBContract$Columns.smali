.class public abstract Lcom/oculus/durableiap/DurableIAPDBContract$Columns;
.super Ljava/lang/Object;
.source "DurableIAPDBContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/durableiap/DurableIAPDBContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Columns"
.end annotation


# static fields
.field public static APPLICATION_GROUPING_ID:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

.field public static EXPIRATION_TIME:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

.field public static GRANT_TIME:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

.field public static PURCHASE_ID:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

.field public static SKU:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

.field public static USER_ID:Lcom/oculus/durableiap/DurableIAPDBContract$Column;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    const-string/jumbo v1, "user_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/durableiap/DurableIAPDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/durableiap/DurableIAPDBContract$Columns;->USER_ID:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    .line 22
    new-instance v0, Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    const-string v1, "application_grouping_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/durableiap/DurableIAPDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/durableiap/DurableIAPDBContract$Columns;->APPLICATION_GROUPING_ID:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    .line 24
    new-instance v0, Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    const-string/jumbo v1, "sku"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/durableiap/DurableIAPDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/durableiap/DurableIAPDBContract$Columns;->SKU:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    .line 26
    new-instance v0, Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    const-string v1, "purchase_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/durableiap/DurableIAPDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/durableiap/DurableIAPDBContract$Columns;->PURCHASE_ID:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    .line 28
    new-instance v0, Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    const-string v1, "grant_time"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/durableiap/DurableIAPDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/durableiap/DurableIAPDBContract$Columns;->GRANT_TIME:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    .line 30
    new-instance v0, Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    const-string v1, "expiration_time"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/durableiap/DurableIAPDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/durableiap/DurableIAPDBContract$Columns;->EXPIRATION_TIME:Lcom/oculus/durableiap/DurableIAPDBContract$Column;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
