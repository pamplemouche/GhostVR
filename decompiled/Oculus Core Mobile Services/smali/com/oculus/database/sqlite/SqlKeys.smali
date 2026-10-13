.class public final Lcom/oculus/database/sqlite/SqlKeys;
.super Ljava/lang/Object;
.source "SqlKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;,
        Lcom/oculus/database/sqlite/SqlKeys$PrimaryKey;,
        Lcom/oculus/database/sqlite/SqlKeys$SqlKey;
    }
.end annotation


# static fields
.field public static final KEY_TO_SQL:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/oculus/database/sqlite/SqlKeys$SqlKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/oculus/database/sqlite/SqlKeys$1;

    invoke-direct {v0}, Lcom/oculus/database/sqlite/SqlKeys$1;-><init>()V

    sput-object v0, Lcom/oculus/database/sqlite/SqlKeys;->KEY_TO_SQL:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
