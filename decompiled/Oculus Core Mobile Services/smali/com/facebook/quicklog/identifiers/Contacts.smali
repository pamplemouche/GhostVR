.class public Lcom/facebook/quicklog/identifiers/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


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
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 79
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "CONTACTS_COLD_START"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "CONTACTS_WARM_START"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "CONTACTS_MAIN_ACTIVITY_CREATE"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "CONTACTS_SHOW_HISTORY"

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "CONTACTS_DRAW_VIEW"

    goto :goto_0

    .line 64
    :pswitch_5
    const-string v0, "CONTACTS_ON_CREATE_VIEW"

    goto :goto_0

    .line 66
    :pswitch_6
    const-string v0, "CONTACTS_TAB_CREATE"

    goto :goto_0

    .line 68
    :pswitch_7
    const-string v0, "CONTACTS_INFLATE_MAIN_ACTIVITY"

    goto :goto_0

    .line 70
    :pswitch_8
    const-string v0, "CONTACTS_INJECT_MAIN_ACTIVITY"

    goto :goto_0

    .line 72
    :pswitch_9
    const-string v0, "CONTACTS_SEARCH_TIME_TO_FIRST_RESULT"

    goto :goto_0

    .line 74
    :pswitch_a
    const-string v0, "CONTACTS_LOCAL_SEARCH"

    goto :goto_0

    .line 76
    :pswitch_b
    const-string v0, "CONTACTS_REMOTE_SEARCH"

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
