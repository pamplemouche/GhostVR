.class public Lcom/facebook/common/locale/FBLocaleMapper;
.super Ljava/lang/Object;
.source "FBLocaleMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFBLocaleFromAndroidLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 22
    :sswitch_0
    const-string v1, "af"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "am"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "ar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "as"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "az"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "bg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "bn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "bs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "ca"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "cb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "ck"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const-string v1, "cs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "cx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "cy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "da"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "de"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "el"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "eo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "et"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "eu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "fa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "fb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "fi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "fil"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "fo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "fr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "fy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "ga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "gl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "gn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "gu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "ha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "hi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "hr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "hu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "hy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "is"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "it"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "iw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "ja"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "jv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "ka"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "km"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "kn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "ko"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "ku"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "la"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "lo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v1, "lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "lv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "mg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v1, "mk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v1, "ml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v1, "mn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v1, "mr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v1, "my"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v1, "nb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v1, "ne"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v1, "nl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v1, "nn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_0

    :sswitch_40
    const-string v1, "or"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_0

    :sswitch_41
    const-string v1, "pa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_0

    :sswitch_42
    const-string v1, "pl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_0

    :sswitch_43
    const-string v1, "ps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_0

    :sswitch_44
    const-string v1, "pt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x44

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v1, "qz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v1, "ro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x46

    goto/16 :goto_0

    :sswitch_47
    const-string/jumbo v1, "ru"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_0

    :sswitch_48
    const-string/jumbo v1, "rw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_0

    :sswitch_49
    const-string/jumbo v1, "si"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_4a
    const-string/jumbo v1, "sk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_0

    :sswitch_4b
    const-string/jumbo v1, "sl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4b

    goto/16 :goto_0

    :sswitch_4c
    const-string/jumbo v1, "sn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_0

    :sswitch_4d
    const-string/jumbo v1, "sq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_0

    :sswitch_4e
    const-string/jumbo v1, "sr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_4f
    const-string/jumbo v1, "sv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_50
    const-string/jumbo v1, "sw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_0

    :sswitch_51
    const-string/jumbo v1, "ta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x51

    goto/16 :goto_0

    :sswitch_52
    const-string/jumbo v1, "te"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_0

    :sswitch_53
    const-string/jumbo v1, "th"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_54
    const-string/jumbo v1, "tl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_55
    const-string/jumbo v1, "tr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_56
    const-string/jumbo v1, "uk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_0

    :sswitch_57
    const-string/jumbo v1, "ur"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x57

    goto/16 :goto_0

    :sswitch_58
    const-string/jumbo v1, "vi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_0

    :sswitch_59
    const-string/jumbo v1, "wo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_0

    :sswitch_5a
    const-string/jumbo v1, "zh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_5b
    const-string/jumbo v1, "zu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_0

    .line 23
    :pswitch_0
    const-string v0, "af_ZA"

    goto/16 :goto_1

    .line 24
    :pswitch_1
    const-string v0, "am_ET"

    goto/16 :goto_1

    .line 25
    :pswitch_2
    const-string v0, "ar_AR"

    goto/16 :goto_1

    .line 26
    :pswitch_3
    const-string v0, "as_IN"

    goto/16 :goto_1

    .line 27
    :pswitch_4
    const-string v0, "az_AZ"

    goto/16 :goto_1

    .line 28
    :pswitch_5
    const-string v0, "be_BY"

    goto/16 :goto_1

    .line 29
    :pswitch_6
    const-string v0, "bg_BG"

    goto/16 :goto_1

    .line 30
    :pswitch_7
    const-string v0, "bn_IN"

    goto/16 :goto_1

    .line 31
    :pswitch_8
    const-string v0, "bs_BA"

    goto/16 :goto_1

    .line 32
    :pswitch_9
    const-string v0, "ca_ES"

    goto/16 :goto_1

    .line 33
    :pswitch_a
    const-string v0, "cb_IQ"

    goto/16 :goto_1

    .line 34
    :pswitch_b
    const-string v0, "ck_US"

    goto/16 :goto_1

    .line 35
    :pswitch_c
    const-string v0, "cs_CZ"

    goto/16 :goto_1

    .line 36
    :pswitch_d
    const-string v0, "cx_PH"

    goto/16 :goto_1

    .line 37
    :pswitch_e
    const-string v0, "cy_GB"

    goto/16 :goto_1

    .line 38
    :pswitch_f
    const-string v0, "da_DK"

    goto/16 :goto_1

    .line 39
    :pswitch_10
    const-string v0, "de_DE"

    goto/16 :goto_1

    .line 40
    :pswitch_11
    const-string v0, "el_GR"

    goto/16 :goto_1

    .line 41
    :pswitch_12
    const-string v0, "eo_EO"

    goto/16 :goto_1

    .line 42
    :pswitch_13
    const-string v0, "es_LA"

    goto/16 :goto_1

    .line 43
    :pswitch_14
    const-string v0, "et_EE"

    goto/16 :goto_1

    .line 44
    :pswitch_15
    const-string v0, "eu_ES"

    goto/16 :goto_1

    .line 45
    :pswitch_16
    const-string v0, "fa_IR"

    goto/16 :goto_1

    .line 46
    :pswitch_17
    const-string v0, "fb_HA"

    goto/16 :goto_1

    .line 47
    :pswitch_18
    const-string v0, "fi_FI"

    goto/16 :goto_1

    .line 48
    :pswitch_19
    const-string/jumbo v0, "tl_PH"

    goto/16 :goto_1

    .line 49
    :pswitch_1a
    const-string v0, "fo_FO"

    goto/16 :goto_1

    .line 50
    :pswitch_1b
    const-string v0, "fr_FR"

    goto/16 :goto_1

    .line 51
    :pswitch_1c
    const-string v0, "fy_NL"

    goto/16 :goto_1

    .line 52
    :pswitch_1d
    const-string v0, "ga_IE"

    goto/16 :goto_1

    .line 53
    :pswitch_1e
    const-string v0, "gl_ES"

    goto/16 :goto_1

    .line 54
    :pswitch_1f
    const-string v0, "gn_PY"

    goto/16 :goto_1

    .line 55
    :pswitch_20
    const-string v0, "gu_IN"

    goto/16 :goto_1

    .line 56
    :pswitch_21
    const-string v0, "ha_NG"

    goto/16 :goto_1

    .line 57
    :pswitch_22
    const-string v0, "hi_IN"

    goto/16 :goto_1

    .line 58
    :pswitch_23
    const-string v0, "hr_HR"

    goto/16 :goto_1

    .line 59
    :pswitch_24
    const-string v0, "hu_HU"

    goto/16 :goto_1

    .line 60
    :pswitch_25
    const-string v0, "hy_AM"

    goto/16 :goto_1

    .line 61
    :pswitch_26
    const-string v0, "id_ID"

    goto/16 :goto_1

    .line 62
    :pswitch_27
    const-string v0, "is_IS"

    goto/16 :goto_1

    .line 63
    :pswitch_28
    const-string v0, "it_IT"

    goto/16 :goto_1

    .line 64
    :pswitch_29
    const-string v0, "he_IL"

    goto/16 :goto_1

    .line 65
    :pswitch_2a
    const-string v0, "ja_JP"

    goto/16 :goto_1

    .line 66
    :pswitch_2b
    const-string v0, "jv_ID"

    goto/16 :goto_1

    .line 67
    :pswitch_2c
    const-string v0, "ka_GE"

    goto/16 :goto_1

    .line 68
    :pswitch_2d
    const-string v0, "km_KH"

    goto/16 :goto_1

    .line 69
    :pswitch_2e
    const-string v0, "kn_IN"

    goto/16 :goto_1

    .line 70
    :pswitch_2f
    const-string v0, "ko_KR"

    goto/16 :goto_1

    .line 71
    :pswitch_30
    const-string v0, "ku_TR"

    goto/16 :goto_1

    .line 72
    :pswitch_31
    const-string v0, "la_VA"

    goto/16 :goto_1

    .line 73
    :pswitch_32
    const-string v0, "lo_LA"

    goto/16 :goto_1

    .line 74
    :pswitch_33
    const-string v0, "lt_LT"

    goto/16 :goto_1

    .line 75
    :pswitch_34
    const-string v0, "lv_LV"

    goto/16 :goto_1

    .line 76
    :pswitch_35
    const-string v0, "mg_MG"

    goto/16 :goto_1

    .line 77
    :pswitch_36
    const-string v0, "mk_MK"

    goto/16 :goto_1

    .line 78
    :pswitch_37
    const-string v0, "ml_IN"

    goto/16 :goto_1

    .line 79
    :pswitch_38
    const-string v0, "mn_MN"

    goto/16 :goto_1

    .line 80
    :pswitch_39
    const-string v0, "mr_IN"

    goto/16 :goto_1

    .line 81
    :pswitch_3a
    const-string v0, "ms_MY"

    goto/16 :goto_1

    .line 82
    :pswitch_3b
    const-string v0, "my_MM"

    goto/16 :goto_1

    .line 83
    :pswitch_3c
    const-string v0, "nb_NO"

    goto/16 :goto_1

    .line 84
    :pswitch_3d
    const-string v0, "ne_NP"

    goto/16 :goto_1

    .line 85
    :pswitch_3e
    const-string v0, "nl_NL"

    goto/16 :goto_1

    .line 86
    :pswitch_3f
    const-string v0, "nn_NO"

    goto/16 :goto_1

    .line 87
    :pswitch_40
    const-string v0, "or_IN"

    goto/16 :goto_1

    .line 88
    :pswitch_41
    const-string v0, "pa_IN"

    goto/16 :goto_1

    .line 89
    :pswitch_42
    const-string v0, "pl_PL"

    goto/16 :goto_1

    .line 90
    :pswitch_43
    const-string v0, "ps_AF"

    goto/16 :goto_1

    .line 91
    :pswitch_44
    const-string v0, "pt_BR"

    goto/16 :goto_1

    .line 92
    :pswitch_45
    const-string/jumbo v0, "qz_MM"

    goto/16 :goto_1

    .line 93
    :pswitch_46
    const-string/jumbo v0, "ro_RO"

    goto/16 :goto_1

    .line 94
    :pswitch_47
    const-string/jumbo v0, "ru_RU"

    goto/16 :goto_1

    .line 95
    :pswitch_48
    const-string/jumbo v0, "rw_RW"

    goto/16 :goto_1

    .line 96
    :pswitch_49
    const-string/jumbo v0, "si_LK"

    goto/16 :goto_1

    .line 97
    :pswitch_4a
    const-string/jumbo v0, "sk_SK"

    goto/16 :goto_1

    .line 98
    :pswitch_4b
    const-string/jumbo v0, "sl_SI"

    goto/16 :goto_1

    .line 99
    :pswitch_4c
    const-string/jumbo v0, "sn_ZW"

    goto/16 :goto_1

    .line 100
    :pswitch_4d
    const-string/jumbo v0, "sq_AL"

    goto/16 :goto_1

    .line 101
    :pswitch_4e
    const-string/jumbo v0, "sr_RS"

    goto/16 :goto_1

    .line 102
    :pswitch_4f
    const-string/jumbo v0, "sv_SE"

    goto/16 :goto_1

    .line 103
    :pswitch_50
    const-string/jumbo v0, "sw_KE"

    goto/16 :goto_1

    .line 104
    :pswitch_51
    const-string/jumbo v0, "ta_IN"

    goto/16 :goto_1

    .line 105
    :pswitch_52
    const-string/jumbo v0, "te_IN"

    goto/16 :goto_1

    .line 106
    :pswitch_53
    const-string/jumbo v0, "th_TH"

    goto/16 :goto_1

    .line 107
    :pswitch_54
    const-string/jumbo v0, "tl_PH"

    goto/16 :goto_1

    .line 108
    :pswitch_55
    const-string/jumbo v0, "tr_TR"

    goto/16 :goto_1

    .line 109
    :pswitch_56
    const-string/jumbo v0, "uk_UA"

    goto/16 :goto_1

    .line 110
    :pswitch_57
    const-string/jumbo v0, "ur_PK"

    goto/16 :goto_1

    .line 111
    :pswitch_58
    const-string/jumbo v0, "vi_VN"

    goto/16 :goto_1

    .line 112
    :pswitch_59
    const-string/jumbo v0, "wo_SN"

    goto/16 :goto_1

    .line 113
    :pswitch_5a
    const-string/jumbo v0, "zh_CN"

    goto/16 :goto_1

    .line 114
    :pswitch_5b
    const-string/jumbo v0, "zu_ZA"

    goto/16 :goto_1

    .line 22
    :sswitch_data_0
    .sparse-switch
        0xc25 -> :sswitch_0
        0xc2c -> :sswitch_1
        0xc31 -> :sswitch_2
        0xc32 -> :sswitch_3
        0xc39 -> :sswitch_4
        0xc43 -> :sswitch_5
        0xc45 -> :sswitch_6
        0xc4c -> :sswitch_7
        0xc51 -> :sswitch_8
        0xc5e -> :sswitch_9
        0xc5f -> :sswitch_a
        0xc68 -> :sswitch_b
        0xc70 -> :sswitch_c
        0xc75 -> :sswitch_d
        0xc76 -> :sswitch_e
        0xc7d -> :sswitch_f
        0xc81 -> :sswitch_10
        0xca7 -> :sswitch_11
        0xcaa -> :sswitch_12
        0xcae -> :sswitch_13
        0xcaf -> :sswitch_14
        0xcb0 -> :sswitch_15
        0xcbb -> :sswitch_16
        0xcbc -> :sswitch_17
        0xcc3 -> :sswitch_18
        0xcc9 -> :sswitch_1a
        0xccc -> :sswitch_1b
        0xcd3 -> :sswitch_1c
        0xcda -> :sswitch_1d
        0xce5 -> :sswitch_1e
        0xce7 -> :sswitch_1f
        0xcee -> :sswitch_20
        0xcf9 -> :sswitch_21
        0xd01 -> :sswitch_22
        0xd0a -> :sswitch_23
        0xd0d -> :sswitch_24
        0xd11 -> :sswitch_25
        0xd25 -> :sswitch_26
        0xd2a -> :sswitch_27
        0xd2b -> :sswitch_28
        0xd2e -> :sswitch_29
        0xd37 -> :sswitch_2a
        0xd4c -> :sswitch_2b
        0xd56 -> :sswitch_2c
        0xd62 -> :sswitch_2d
        0xd63 -> :sswitch_2e
        0xd64 -> :sswitch_2f
        0xd6a -> :sswitch_30
        0xd75 -> :sswitch_31
        0xd83 -> :sswitch_32
        0xd88 -> :sswitch_33
        0xd8a -> :sswitch_34
        0xd9a -> :sswitch_35
        0xd9e -> :sswitch_36
        0xd9f -> :sswitch_37
        0xda1 -> :sswitch_38
        0xda5 -> :sswitch_39
        0xda6 -> :sswitch_3a
        0xdac -> :sswitch_3b
        0xdb4 -> :sswitch_3c
        0xdb7 -> :sswitch_3d
        0xdbe -> :sswitch_3e
        0xdc0 -> :sswitch_3f
        0xde3 -> :sswitch_40
        0xdf1 -> :sswitch_41
        0xdfc -> :sswitch_42
        0xe03 -> :sswitch_43
        0xe04 -> :sswitch_44
        0xe29 -> :sswitch_45
        0xe3d -> :sswitch_46
        0xe43 -> :sswitch_47
        0xe45 -> :sswitch_48
        0xe56 -> :sswitch_49
        0xe58 -> :sswitch_4a
        0xe59 -> :sswitch_4b
        0xe5b -> :sswitch_4c
        0xe5e -> :sswitch_4d
        0xe5f -> :sswitch_4e
        0xe63 -> :sswitch_4f
        0xe64 -> :sswitch_50
        0xe6d -> :sswitch_51
        0xe71 -> :sswitch_52
        0xe74 -> :sswitch_53
        0xe78 -> :sswitch_54
        0xe7e -> :sswitch_55
        0xe96 -> :sswitch_56
        0xe9d -> :sswitch_57
        0xeb3 -> :sswitch_58
        0xed8 -> :sswitch_59
        0xf2e -> :sswitch_5a
        0xf3b -> :sswitch_5b
        0x18c09 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
    .end packed-switch
.end method

.method private static getFBLocaleFromAndroidLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 120
    :sswitch_0
    const-string v1, "en_GB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "es_ES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "fb_LS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "fr_CA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "pt_PT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "zh_CN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "zh_HK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "zh_TW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 121
    :pswitch_0
    const-string v0, "en_GB"

    goto :goto_1

    .line 122
    :pswitch_1
    const-string v0, "es_ES"

    goto :goto_1

    .line 123
    :pswitch_2
    const-string v0, "fb_LS"

    goto :goto_1

    .line 124
    :pswitch_3
    const-string v0, "fr_CA"

    goto :goto_1

    .line 125
    :pswitch_4
    const-string v0, "pt_PT"

    goto :goto_1

    .line 126
    :pswitch_5
    const-string/jumbo v0, "zh_CN"

    goto :goto_1

    .line 127
    :pswitch_6
    const-string/jumbo v0, "zh_HK"

    goto :goto_1

    .line 128
    :pswitch_7
    const-string/jumbo v0, "zh_TW"

    goto :goto_1

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x5c2b431 -> :sswitch_0
        0x5c4f9df -> :sswitch_1
        0x5cb57ea -> :sswitch_2
        0x5d29cb1 -> :sswitch_3
        0x660721f -> :sswitch_4
        0x6e7e71c -> :sswitch_5
        0x6e7e7b4 -> :sswitch_6
        0x6e7e934 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static mapLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/locale/FBLocaleMapper;->getFBLocaleFromAndroidLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/locale/FBLocaleMapper;->getFBLocaleFromAndroidLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    if-nez v0, :cond_1

    .line 148
    const-string v0, "en_US"

    .line 150
    :cond_1
    return-object v0
.end method
