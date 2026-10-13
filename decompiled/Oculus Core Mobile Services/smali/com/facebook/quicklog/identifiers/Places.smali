.class public Lcom/facebook/quicklog/identifiers/Places;
.super Ljava/lang/Object;
.source "Places.java"


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
    .line 42
    sparse-switch p0, :sswitch_data_0

    .line 57
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 44
    :sswitch_0
    const-string v0, "PLACES_PLACES_PICKER_LOCATION_PIN_TTI"

    goto :goto_0

    .line 46
    :sswitch_1
    const-string v0, "PLACES_PLACES_PICKER_CHECKIN_BUTTON_TTI"

    goto :goto_0

    .line 48
    :sswitch_2
    const-string v0, "PLACES_ANDROID_PLACE_PICKER_TAP_ACTION_TO_CHECKIN_START"

    goto :goto_0

    .line 50
    :sswitch_3
    const-string v0, "PLACES_ANDROID_PLACE_PICKER_CHECKIN_START_TO_PLACE_FETCH_START"

    goto :goto_0

    .line 52
    :sswitch_4
    const-string v0, "PLACES_ANDROID_PLACE_PICKER_PLACE_FETCH_START_TO_PLACE_FETCH_END"

    goto :goto_0

    .line 54
    :sswitch_5
    const-string v0, "PLACES_ANDROID_PLACE_PICKER_PLACE_FETCH_END_TO_PLACES_RENDERED"

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
    .end sparse-switch
.end method
