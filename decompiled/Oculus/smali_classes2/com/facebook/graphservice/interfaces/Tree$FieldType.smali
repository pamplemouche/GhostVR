.class public final enum Lcom/facebook/graphservice/interfaces/Tree$FieldType;
.super Ljava/lang/Enum;
.source "Tree.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/graphservice/interfaces/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/graphservice/interfaces/Tree$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum BOOL:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum BOOL_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum DOUBLE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum DOUBLE_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum DYNAMIC:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum INT:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum INT_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum NONE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum STRING:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum STRING_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum TIME:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum TIME_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum TREE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

.field public static final enum TREE_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->NONE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 18
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "BOOL"

    invoke-direct {v0, v1, v4}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->BOOL:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 19
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->DOUBLE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 20
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v6}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->INT:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 21
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v7}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TIME:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 22
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->STRING:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 23
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->DYNAMIC:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 24
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "BOOL_LIST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->BOOL_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 25
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "DOUBLE_LIST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->DOUBLE_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 26
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "INT_LIST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->INT_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 27
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "TIME_LIST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TIME_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 28
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "STRING_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->STRING_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 29
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "TREE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TREE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 30
    new-instance v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    const-string v1, "TREE_LIST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/graphservice/interfaces/Tree$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TREE_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    .line 15
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    sget-object v1, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->NONE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->BOOL:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->DOUBLE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->INT:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TIME:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->STRING:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->DYNAMIC:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->BOOL_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->DOUBLE_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->INT_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TIME_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->STRING_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TREE:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->TREE_LIST:Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->$VALUES:[Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/graphservice/interfaces/Tree$FieldType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/graphservice/interfaces/Tree$FieldType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/graphservice/interfaces/Tree$FieldType;->$VALUES:[Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    invoke-virtual {v0}, [Lcom/facebook/graphservice/interfaces/Tree$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/graphservice/interfaces/Tree$FieldType;

    return-object v0
.end method
