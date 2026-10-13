.class public final enum Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/ocms/library/provider/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

.field public static final enum MULTIPLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

.field public static final enum SINGLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->SINGLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    .line 11
    new-instance v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    const-string v1, "MULTIPLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->MULTIPLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    sget-object v1, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->SINGLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->MULTIPLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->$VALUES:[Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->value:I

    .line 17
    return-void
.end method

.method public static fromValue(I)Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;
    .locals 5

    .prologue
    .line 20
    invoke-static {}, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->values()[Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 21
    iget v4, v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->value:I

    if-ne v4, p0, :cond_0

    .line 26
    :goto_1
    return-object v0

    .line 20
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    return-object v0
.end method

.method public static values()[Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->$VALUES:[Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-virtual {v0}, [Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    return-object v0
.end method
