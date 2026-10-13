.class public Lcom/facebook/quicklog/identifiers/GroupsAdmin;
.super Ljava/lang/Object;
.source "GroupsAdmin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sparse-switch p0, :sswitch_data_0

    .line 45
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 38
    :sswitch_0
    const-string v0, "GROUPS_ADMIN_MEMBER_SCREENING_INITIAL_TTI"

    goto :goto_0

    .line 40
    :sswitch_1
    const-string v0, "GROUPS_ADMIN_TOOLS_TTI"

    goto :goto_0

    .line 42
    :sswitch_2
    const-string v0, "GROUPS_ADMIN_MEMBER_REQUESTS_TAIL_LOAD"

    goto :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method
