.class public final enum Lcom/oculus/browser/acra/MinidumpExcludeReason;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final synthetic $VALUES:[Lcom/oculus/browser/acra/MinidumpExcludeReason;

.field public static final enum DUMP_TOO_BIG:Lcom/oculus/browser/acra/MinidumpExcludeReason;

.field public static final enum DUMP_TOO_OLD:Lcom/oculus/browser/acra/MinidumpExcludeReason;


# instance fields
.field public final mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/oculus/browser/acra/MinidumpExcludeReason;

    const v1, 0xfb01

    const/4 v2, 0x0

    const-string v3, "DUMP_TOO_BIG"

    invoke-direct {v0, v3, v2, v1}, Lcom/oculus/browser/acra/MinidumpExcludeReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/browser/acra/MinidumpExcludeReason;->DUMP_TOO_BIG:Lcom/oculus/browser/acra/MinidumpExcludeReason;

    .line 2
    new-instance v0, Lcom/oculus/browser/acra/MinidumpExcludeReason;

    const v1, 0xfb02

    const/4 v3, 0x1

    const-string v4, "DUMP_TOO_OLD"

    invoke-direct {v0, v4, v3, v1}, Lcom/oculus/browser/acra/MinidumpExcludeReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/browser/acra/MinidumpExcludeReason;->DUMP_TOO_OLD:Lcom/oculus/browser/acra/MinidumpExcludeReason;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oculus/browser/acra/MinidumpExcludeReason;

    .line 3
    sget-object v4, Lcom/oculus/browser/acra/MinidumpExcludeReason;->DUMP_TOO_BIG:Lcom/oculus/browser/acra/MinidumpExcludeReason;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/oculus/browser/acra/MinidumpExcludeReason;->$VALUES:[Lcom/oculus/browser/acra/MinidumpExcludeReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/oculus/browser/acra/MinidumpExcludeReason;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/browser/acra/MinidumpExcludeReason;
    .locals 1

    .line 1
    const-class v0, Lcom/oculus/browser/acra/MinidumpExcludeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/browser/acra/MinidumpExcludeReason;

    return-object p0
.end method

.method public static values()[Lcom/oculus/browser/acra/MinidumpExcludeReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/MinidumpExcludeReason;->$VALUES:[Lcom/oculus/browser/acra/MinidumpExcludeReason;

    invoke-virtual {v0}, [Lcom/oculus/browser/acra/MinidumpExcludeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/browser/acra/MinidumpExcludeReason;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oculus/browser/acra/MinidumpExcludeReason;->mValue:I

    return v0
.end method
